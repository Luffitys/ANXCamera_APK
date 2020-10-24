.class public Lcom/android/camera/videoplayer/meta/CurrentItemMetaData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/videoplayer/meta/MetaData;


# instance fields
.field public final currentItemView:Landroid/view/View;

.field public final positionOfCurrentItem:I


# direct methods
.method public constructor <init>(ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera/videoplayer/meta/CurrentItemMetaData;->positionOfCurrentItem:I

    iput-object p2, p0, Lcom/android/camera/videoplayer/meta/CurrentItemMetaData;->currentItemView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CurrentItemMetaData{positionOfCurrentItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/videoplayer/meta/CurrentItemMetaData;->positionOfCurrentItem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentItemView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/videoplayer/meta/CurrentItemMetaData;->currentItemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
