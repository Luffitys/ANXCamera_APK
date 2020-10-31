.class public final Landroid/webkit/WebView$InspectionCompanion;
.super Ljava/lang/Object;
.source "WebView$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/webkit/WebView;",
        ">;"
    }
.end annotation


# instance fields
.field private mContentHeightId:I

.field private mFaviconId:I

.field private mOriginalUrlId:I

.field private mProgressId:I

.field private mPropertiesMapped:Z

.field private mRendererPriorityWaivedWhenNotVisibleId:I

.field private mRendererRequestedPriorityId:I

.field private mTitleId:I

.field private mUrlId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 7

    const-string v0, "contentHeight"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView$InspectionCompanion;->mContentHeightId:I

    const-string v0, "favicon"

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView$InspectionCompanion;->mFaviconId:I

    const-string/jumbo v0, "originalUrl"

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView$InspectionCompanion;->mOriginalUrlId:I

    const-string/jumbo v0, "progress"

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView$InspectionCompanion;->mProgressId:I

    const-string/jumbo v0, "rendererPriorityWaivedWhenNotVisible"

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView$InspectionCompanion;->mRendererPriorityWaivedWhenNotVisibleId:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const-string/jumbo v2, "waived"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x1

    const-string v3, "bound"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v3, 0x2

    const-string v4, "important"

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/webkit/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;

    invoke-direct {v3, v0}, Landroid/webkit/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v4, "rendererRequestedPriority"

    invoke-interface {p1, v4, v1, v3}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView$InspectionCompanion;->mRendererRequestedPriorityId:I

    const-string/jumbo v3, "title"

    invoke-interface {p1, v3, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView$InspectionCompanion;->mTitleId:I

    const-string/jumbo v3, "url"

    invoke-interface {p1, v3, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebView$InspectionCompanion;->mUrlId:I

    iput-boolean v2, p0, Landroid/webkit/WebView$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method

.method public readProperties(Landroid/webkit/WebView;Landroid/view/inspector/PropertyReader;)V
    .registers 5

    iget-boolean v0, p0, Landroid/webkit/WebView$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_4d

    iget v0, p0, Landroid/webkit/WebView$InspectionCompanion;->mContentHeightId:I

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/webkit/WebView$InspectionCompanion;->mFaviconId:I

    invoke-virtual {p1}, Landroid/webkit/WebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/webkit/WebView$InspectionCompanion;->mOriginalUrlId:I

    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/webkit/WebView$InspectionCompanion;->mProgressId:I

    invoke-virtual {p1}, Landroid/webkit/WebView;->getProgress()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/webkit/WebView$InspectionCompanion;->mRendererPriorityWaivedWhenNotVisibleId:I

    invoke-virtual {p1}, Landroid/webkit/WebView;->getRendererPriorityWaivedWhenNotVisible()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/webkit/WebView$InspectionCompanion;->mRendererRequestedPriorityId:I

    invoke-virtual {p1}, Landroid/webkit/WebView;->getRendererRequestedPriority()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroid/webkit/WebView$InspectionCompanion;->mTitleId:I

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/webkit/WebView$InspectionCompanion;->mUrlId:I

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    return-void

    :cond_4d
    new-instance v0, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {v0}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw v0
.end method

.method public bridge synthetic readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .registers 3

    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView$InspectionCompanion;->readProperties(Landroid/webkit/WebView;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
