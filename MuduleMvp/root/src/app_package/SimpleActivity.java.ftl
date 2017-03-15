package ${packageName};

import android.os.Bundle;
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
	
}
