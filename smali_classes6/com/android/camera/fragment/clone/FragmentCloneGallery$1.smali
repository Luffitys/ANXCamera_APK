.class Lcom/android/camera/fragment/clone/FragmentCloneGallery$1;
.super Lcom/android/camera/ui/TextureVideoView$MediaPlayerAdapter;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/clone/FragmentCloneGallery;

.field final synthetic val$bgHolder:Landroid/widget/ImageView;

.field final synthetic val$fileDescriptor:Landroid/content/res/AssetFileDescriptor;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/clone/FragmentCloneGallery;Landroid/content/res/AssetFileDescriptor;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$1;->this$0:Lcom/android/camera/fragment/clone/FragmentCloneGallery;

    iput-object p2, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$1;->val$fileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iput-object p3, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$1;->val$bgHolder:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/camera/ui/TextureVideoView$MediaPlayerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$1;->val$bgHolder:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/TextureVideoView$MediaPlayerAdapter;->onInfo(Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/ui/TextureVideoView$MediaPlayerAdapter;->onPrepared(Landroid/media/MediaPlayer;)V

    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$1;->val$fileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-static {p0}, Lcom/android/camera/Util;->closeSafely(Ljava/io/Closeable;)V

    return-void
.end method
