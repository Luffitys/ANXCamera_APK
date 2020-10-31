.class public Lmiui/widget/DropDownPopupWindow$ViewContentController;
.super Ljava/lang/Object;
.source "DropDownPopupWindow.java"

# interfaces
.implements Lmiui/widget/DropDownPopupWindow$ContentController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DropDownPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewContentController"
.end annotation


# instance fields
.field private mContent:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mLayoutId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow$ViewContentController;->mContext:Landroid/content/Context;

    iput p2, p0, Lmiui/widget/DropDownPopupWindow$ViewContentController;->mLayoutId:I

    return-void
.end method

.method public constructor <init>(Lmiui/widget/DropDownPopupWindow;I)V
    .registers 4

    invoke-virtual {p1}, Lmiui/widget/DropDownPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lmiui/widget/DropDownPopupWindow$ViewContentController;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, p0}, Lmiui/widget/DropDownPopupWindow;->setContentController(Lmiui/widget/DropDownPopupWindow$ContentController;)V

    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .registers 2

    invoke-virtual {p0}, Lmiui/widget/DropDownPopupWindow$ViewContentController;->initContent()V

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$ViewContentController;->mContent:Landroid/view/View;

    return-object v0
.end method

.method protected initContent()V
    .registers 4

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$ViewContentController;->mContent:Landroid/view/View;

    if-nez v0, :cond_16

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$ViewContentController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lmiui/widget/DropDownPopupWindow$ViewContentController;->mLayoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/DropDownPopupWindow$ViewContentController;->mContent:Landroid/view/View;

    invoke-virtual {p0, v1}, Lmiui/widget/DropDownPopupWindow$ViewContentController;->onContentInit(Landroid/view/View;)V

    :cond_16
    return-void
.end method

.method public onAniamtionUpdate(Landroid/view/View;F)V
    .registers 5

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_f
    return-void
.end method

.method protected onContentInit(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onDismiss()V
    .registers 1

    return-void
.end method

.method public onShow()V
    .registers 1

    return-void
.end method
