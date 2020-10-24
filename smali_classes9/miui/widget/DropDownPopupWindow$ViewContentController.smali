.class public Lmiui/widget/DropDownPopupWindow$ViewContentController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/widget/DropDownPopupWindow$ContentController;


# instance fields
.field private mContent:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mLayoutId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow$ViewContentController;->mContext:Landroid/content/Context;

    iput p2, p0, Lmiui/widget/DropDownPopupWindow$ViewContentController;->mLayoutId:I

    return-void
.end method

.method public constructor <init>(Lmiui/widget/DropDownPopupWindow;I)V
    .locals 1

    invoke-virtual {p1}, Lmiui/widget/DropDownPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lmiui/widget/DropDownPopupWindow$ViewContentController;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, p0}, Lmiui/widget/DropDownPopupWindow;->setContentController(Lmiui/widget/DropDownPopupWindow$ContentController;)V

    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lmiui/widget/DropDownPopupWindow$ViewContentController;->initContent()V

    iget-object p0, p0, Lmiui/widget/DropDownPopupWindow$ViewContentController;->mContent:Landroid/view/View;

    return-object p0
.end method

.method protected initContent()V
    .locals 3

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$ViewContentController;->mContent:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$ViewContentController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lmiui/widget/DropDownPopupWindow$ViewContentController;->mLayoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/DropDownPopupWindow$ViewContentController;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lmiui/widget/DropDownPopupWindow$ViewContentController;->onContentInit(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onAniamtionUpdate(Landroid/view/View;F)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr p0, v0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method protected onContentInit(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onDismiss()V
    .locals 0

    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method
