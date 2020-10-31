.class Lmiui/maml/ThirdAppPicker$FileListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ThirdAppPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ThirdAppPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lmiui/maml/ThirdAppPicker;


# direct methods
.method public constructor <init>(Lmiui/maml/ThirdAppPicker;Landroid/content/Context;ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lmiui/maml/ThirdAppPicker$FileListAdapter;->this$0:Lmiui/maml/ThirdAppPicker;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lmiui/maml/ThirdAppPicker$FileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    move-object v0, p2

    goto :goto_f

    :cond_5
    iget-object v1, p0, Lmiui/maml/ThirdAppPicker$FileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x110b0008

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_f
    iget-object v1, p0, Lmiui/maml/ThirdAppPicker$FileListAdapter;->this$0:Lmiui/maml/ThirdAppPicker;

    # getter for: Lmiui/maml/ThirdAppPicker;->mAllApps:Ljava/util/List;
    invoke-static {v1}, Lmiui/maml/ThirdAppPicker;->access$000(Lmiui/maml/ThirdAppPicker;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    const v2, 0x1109001b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x1109001c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-nez v1, :cond_31

    const/4 v4, 0x0

    goto :goto_3b

    :cond_31
    iget-object v4, p0, Lmiui/maml/ThirdAppPicker$FileListAdapter;->this$0:Lmiui/maml/ThirdAppPicker;

    # getter for: Lmiui/maml/ThirdAppPicker;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lmiui/maml/ThirdAppPicker;->access$100(Lmiui/maml/ThirdAppPicker;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_3b
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v1, :cond_4e

    iget-object v4, p0, Lmiui/maml/ThirdAppPicker$FileListAdapter;->this$0:Lmiui/maml/ThirdAppPicker;

    # getter for: Lmiui/maml/ThirdAppPicker;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lmiui/maml/ThirdAppPicker;->access$100(Lmiui/maml/ThirdAppPicker;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_54

    :cond_4e
    const v4, 0x110e0087

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    :goto_54
    return-object v0
.end method
