package ${packageName};

import android.os.Bundle;
import android.content.Context;
import android.content.Intent;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import ${applicationPackage}.ui.base.BaseActivity;
import ${applicationPackage}.ui.adapter.recyclerview.CommonAdapter;
import ${applicationPackage}.ui.adapter.recyclerview.MultiItemTypeAdapter;
import ${applicationPackage}.ui.adapter.recyclerview.base.ViewHolder;
import java.util.ArrayList;
import android.view.View;
import java.util.List;
import butterknife.BindView;
import butterknife.ButterKnife;
<#if applicationPackage?? >
import ${applicationPackage}.R;
</#if>


public class ${activityClass} extends BaseActivity {

    @BindView(R.id.recyclerView)
    RecyclerView mRecyclerView;
    @BindView(R.id.refresh_layout)
    SwipeRefreshLayout mRefreshLayout;
    private LinearLayoutManager mLayoutManager;
    private CommonAdapter<${recyclerViewItemBean}> mCommonAdapter;
    private List<${recyclerViewItemBean}> m${recyclerViewItemBean}s = new ArrayList<>();
    private boolean mLoading;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
<#if generateLayout>
        setContentView(R.layout.${layoutName});
</#if>

        setUp();
        ButterKnife.bind(this);

        init();
	}

    private void init() {
        initRecyclerView();
    }

    @Override
    protected void setUp() {
        
    }

    private void initRecyclerView() {
        mRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() {
            @Override
            public void onRefresh() {
                PullDownToRefresh();
            }
        });
        mCommonAdapter = new CommonAdapter<${recyclerViewItemBean}>(this, R.layout.${recyclerViewItemLayout}, m${recyclerViewItemBean}) {
            @Override
            protected void convert(ViewHolder holder, ${recyclerViewItemBean} bean, int position) {
//                holder.setText(R.id., );
            }
        };

        mCommonAdapter.setOnItemClickListener(new MultiItemTypeAdapter.OnItemClickListener() {
            @Override
            public void onItemClick(View view, RecyclerView.ViewHolder holder, int position) {
            }

            @Override
            public boolean onItemLongClick(View view, RecyclerView.ViewHolder holder, int position) {
                return false;
            }
        });

        mLayoutManager = new LinearLayoutManager(this);
        mRecyclerView.setLayoutManager(mLayoutManager);
        mRecyclerView.setAdapter(mCommonAdapter);
    }

    private void PullDownToRefresh() {
        if (!mLoading) {
            showLoading();
            mLoading = true;
            mRefreshLayout.postDelayed(new Runnable() {
                @Override
                public void run() {
                    hideLoading();
                }
            }, 1000);
        }
    }

    @Override
    public void showLoading() {
        mRefreshLayout.setRefreshing(true);
    }

    @Override
    public void hideLoading() {
        mLoading = false;
        mRefreshLayout.setRefreshing(false);
    }

    public static Intent getStartIntent(Context context) {
        return new Intent(context, ${activityClass}.class);
    }
	
}
