package ${packageName};

import android.os.Bundle;
import android.content.Context;
import android.content.Intent;
import ${applicationPackage}.ui.base.BaseActivity;
<#if applicationPackage?? >
import ${applicationPackage}.R;
</#if>

public class ${activityClass} extends BaseActivity implements ${mvpViewName}{

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
<#if generateLayout>
        setContentView(R.layout.${layoutName});
</#if>
	}

	@Override
    protected void setUp() {
        
    }

    public static Intent getStartIntent(Context context) {
        return new Intent(context, ${activityClass}.class);
    }
	
}
