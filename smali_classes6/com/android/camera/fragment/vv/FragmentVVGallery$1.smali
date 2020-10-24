.class Lcom/android/camera/fragment/vv/FragmentVVGallery$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/fragment/vv/ResourceSelectedListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/vv/FragmentVVGallery;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/vv/FragmentVVGallery;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery$1;->this$0:Lcom/android/camera/fragment/vv/FragmentVVGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceReady()V
    .locals 0

    return-void
.end method

.method public onResourceSelected(Lcom/android/camera/fragment/vv/VVItem;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery$1;->this$0:Lcom/android/camera/fragment/vv/FragmentVVGallery;

    invoke-static {v0, p1}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->access$002(Lcom/android/camera/fragment/vv/FragmentVVGallery;Lcom/android/camera/fragment/vv/VVItem;)Lcom/android/camera/fragment/vv/VVItem;

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery$1;->this$0:Lcom/android/camera/fragment/vv/FragmentVVGallery;

    invoke-static {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->access$100(Lcom/android/camera/fragment/vv/FragmentVVGallery;Lcom/android/camera/fragment/vv/VVItem;)V

    return-void
.end method
