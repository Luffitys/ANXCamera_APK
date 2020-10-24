.class Lmiui/external/widget/Spinner$DropDownPopupAdapter;
.super Lmiui/external/widget/Spinner$DropDownAdapter;
.source ""


# direct methods
.method constructor <init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V
    .locals 0
    .param p1    # Landroid/widget/SpinnerAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lmiui/external/widget/Spinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lmiui/external/widget/Spinner$DropDownAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Lmiui/external/widget/Spinner$DropDownAdapter;->getCount()I

    move-result p0

    invoke-static {p2, p1, p0}, Lmiui/external/graphics/TaggingDrawableUtil;->updateItemPadding(Landroid/view/View;II)V

    return-object p2
.end method
