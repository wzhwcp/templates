package ${packageName};

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import ${applicationPackage}.ui.base.BaseFragment;
import butterknife.ButterKnife;
import ${applicationPackage}.R;


public class ${activityClass} extends BaseFragment implements ${mvpViewName}{

    private View rootView;

    public ${activityClass}() {
        // Required empty public constructor
    }


    public static ${activityClass} newInstance() {
        return new ${activityClass}();
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }


    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
<#if generateLayout>
        // Inflate the layout for this fragment
        if (rootView == null) {
			<#if isActivity>
				rootView = inflater.inflate(R.layout.${layoutName01}, container, false);
			<#else>
				rootView = inflater.inflate(R.layout.${layoutName02}, container, false);
			</#if>

            setUnBinder(ButterKnife.bind(this, rootView));

        }
        
</#if>
        return rootView;
    }

	@Override
    protected void setUp(View view) {
        
    }
	
}
