package ${packageName};

import ${applicationPackage}.ui.base.BasePresenter;
import ${applicationPackage}.data.DataManager;
import io.reactivex.disposables.CompositeDisposable;
import javax.inject.Inject;

public class ${presenterName}<V extends ${mvpViewName}> extends BasePresenter<V> 
	implements ${mvpPresenterName}<V>{

	@Inject
    public ${presenterName}(DataManager dataManager, CompositeDisposable compositeDisposable) {
        super(dataManager, compositeDisposable);
    }
}
