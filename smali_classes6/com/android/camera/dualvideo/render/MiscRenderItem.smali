.class Lcom/android/camera/dualvideo/render/MiscRenderItem;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final mTex:Lcom/android/gallery3d/ui/BasicTexture;

.field private final mType:I


# direct methods
.method public constructor <init>(ILcom/android/gallery3d/ui/BasicTexture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/camera/dualvideo/render/MiscRenderItem;->mTex:Lcom/android/gallery3d/ui/BasicTexture;

    iput p1, p0, Lcom/android/camera/dualvideo/render/MiscRenderItem;->mType:I

    return-void
.end method


# virtual methods
.method public declared-synchronized getBasicTexture()Lcom/android/gallery3d/ui/BasicTexture;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscRenderItem;->mTex:Lcom/android/gallery3d/ui/BasicTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTexType()I
    .locals 0

    iget p0, p0, Lcom/android/camera/dualvideo/render/MiscRenderItem;->mType:I

    return p0
.end method
