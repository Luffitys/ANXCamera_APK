.class public Lcom/miui/mishare/app/view/MiShareFileTypeIcon;
.super Landroid/widget/FrameLayout;
.source "MiShareFileTypeIcon.java"


# instance fields
.field private mBottomView:Landroid/widget/ImageView;

.field private mTopView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .registers 4

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x110b0039

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x11090076

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->mTopView:Landroid/widget/ImageView;

    const v0, 0x11090070

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->mBottomView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public setFileTypes(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x8

    if-eqz p1, :cond_64

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_64

    :cond_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_30

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->mBottomView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/miui/mishare/app/util/MiShareFileHelper;->getFileExtensionFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->mTopView:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->getFileIconResId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_63

    :cond_30
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/miui/mishare/app/util/MiShareFileHelper;->getFileExtensionFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->mTopView:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->getFileIconResId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/miui/mishare/app/util/MiShareFileHelper;->getFileExtensionFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->mBottomView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->mBottomView:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->getFileIconResId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_63
    return-void

    :cond_64
    :goto_64
    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->setVisibility(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    const/16 v0, 0x8

    if-nez p1, :cond_8

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->setVisibility(I)V

    return-void

    :cond_8
    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->mTopView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->mBottomView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
