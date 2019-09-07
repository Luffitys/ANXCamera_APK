.class Lcom/android/camera/ui/TextureVideoView$Size;
.super Ljava/lang/Object;
.source "TextureVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/TextureVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Size"
.end annotation


# instance fields
.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera/ui/TextureVideoView$Size;->mWidth:I

    iput p2, p0, Lcom/android/camera/ui/TextureVideoView$Size;->mHeight:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/TextureVideoView$Size;->mHeight:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/TextureVideoView$Size;->mWidth:I

    return p0
.end method
