.class public Lcom/android/camera/visibilityutils/items/ListItemData;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final SHOW_LOGS:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIndexInAdapter:Ljava/lang/Integer;

.field private mIsMostVisibleItemChanged:Z

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/app/LauncherActivity$ListItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/visibilityutils/items/ListItemData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fillWithData(ILandroid/view/View;)Lcom/android/camera/visibilityutils/items/ListItemData;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/visibilityutils/items/ListItemData;->mIndexInAdapter:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/android/camera/visibilityutils/items/ListItemData;->mView:Landroid/view/View;

    return-object p0
.end method

.method public getIndex()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/visibilityutils/items/ListItemData;->mIndexInAdapter:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/visibilityutils/items/ListItemData;->mView:Landroid/view/View;

    return-object p0
.end method

.method public getVisibilityPercents(Ljava/util/List;)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/visibilityutils/items/ListItemData;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/visibilityutils/items/ListItemData;->getIndex()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/visibilityutils/items/ListItem;

    invoke-virtual {p0}, Lcom/android/camera/visibilityutils/items/ListItemData;->getView()Landroid/view/View;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/camera/visibilityutils/items/ListItem;->getVisibilityPercents(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/visibilityutils/items/ListItemData;->mIndexInAdapter:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/visibilityutils/items/ListItemData;->mView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMostVisibleItemChanged()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/visibilityutils/items/ListItemData;->mIsMostVisibleItemChanged:Z

    return p0
.end method

.method public setMostVisibleItemChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/visibilityutils/items/ListItemData;->mIsMostVisibleItemChanged:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListItemData{mIndexInAdapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/visibilityutils/items/ListItemData;->mIndexInAdapter:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/visibilityutils/items/ListItemData;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsMostVisibleItemChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/camera/visibilityutils/items/ListItemData;->mIsMostVisibleItemChanged:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
