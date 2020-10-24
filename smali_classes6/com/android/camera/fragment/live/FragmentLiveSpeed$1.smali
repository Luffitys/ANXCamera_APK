.class Lcom/android/camera/fragment/live/FragmentLiveSpeed$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/live/FragmentLiveSpeed;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/live/FragmentLiveSpeed;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed$1;->this$0:Lcom/android/camera/fragment/live/FragmentLiveSpeed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed$1;->this$0:Lcom/android/camera/fragment/live/FragmentLiveSpeed;

    invoke-virtual {p0, p3}, Lcom/android/camera/fragment/live/FragmentLiveSpeed;->onItemSelected(I)V

    return-void
.end method
