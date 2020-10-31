.class public Lmiui/maml/ThirdAppPicker;
.super Lmiui/app/Activity;
.source "ThirdAppPicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ThirdAppPicker$FileListAdapter;
    }
.end annotation


# instance fields
.field private mAllApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListAdapter:Lmiui/maml/ThirdAppPicker$FileListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/ThirdAppPicker;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ThirdAppPicker;->mAllApps:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/maml/ThirdAppPicker;)Landroid/content/pm/PackageManager;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ThirdAppPicker;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x110b0009

    invoke-virtual {p0, v0}, Lmiui/maml/ThirdAppPicker;->setContentView(I)V

    invoke-virtual {p0}, Lmiui/maml/ThirdAppPicker;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    const v1, 0x110e012f

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setTitle(I)V

    invoke-virtual {p0}, Lmiui/maml/ThirdAppPicker;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {p0}, Lmiui/maml/ThirdAppPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ThirdAppPicker;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lmiui/maml/ThirdAppPicker;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ThirdAppPicker;->mAllApps:Ljava/util/List;

    new-instance v3, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object v4, p0, Lmiui/maml/ThirdAppPicker;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v3, v4}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v1, p0, Lmiui/maml/ThirdAppPicker;->mAllApps:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x1109007c

    invoke-virtual {p0, v1}, Lmiui/maml/ThirdAppPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lmiui/maml/ThirdAppPicker;->mListView:Landroid/widget/ListView;

    new-instance v1, Lmiui/maml/ThirdAppPicker$FileListAdapter;

    iget-object v2, p0, Lmiui/maml/ThirdAppPicker;->mAllApps:Ljava/util/List;

    const v3, 0x110b0008

    invoke-direct {v1, p0, p0, v3, v2}, Lmiui/maml/ThirdAppPicker$FileListAdapter;-><init>(Lmiui/maml/ThirdAppPicker;Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lmiui/maml/ThirdAppPicker;->mListAdapter:Lmiui/maml/ThirdAppPicker$FileListAdapter;

    iget-object v2, p0, Lmiui/maml/ThirdAppPicker;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lmiui/maml/ThirdAppPicker;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lmiui/maml/ThirdAppPicker;->mAllApps:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    if-eqz v0, :cond_25

    iget-object v2, p0, Lmiui/maml/ThirdAppPicker;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_25
    const/4 v2, -0x1

    if-eqz v0, :cond_2a

    move-object v3, v1

    goto :goto_2b

    :cond_2a
    const/4 v3, 0x0

    :goto_2b
    invoke-virtual {p0, v2, v3}, Lmiui/maml/ThirdAppPicker;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lmiui/maml/ThirdAppPicker;->finish()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_c

    invoke-virtual {p0}, Lmiui/maml/ThirdAppPicker;->finish()V

    :cond_c
    invoke-super {p0, p1}, Lmiui/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
