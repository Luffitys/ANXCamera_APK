.class Lcom/android/camera/fragment/FragmentMainContent$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/FragmentMainContent;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentMainContent;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent$4;->this$0:Lcom/android/camera/fragment/FragmentMainContent;

    iput p2, p0, Lcom/android/camera/fragment/FragmentMainContent$4;->val$result:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent$4;->this$0:Lcom/android/camera/fragment/FragmentMainContent;

    iget v1, p0, Lcom/android/camera/fragment/FragmentMainContent$4;->val$result:I

    invoke-static {v0, v1}, Lcom/android/camera/fragment/FragmentMainContent;->access$602(Lcom/android/camera/fragment/FragmentMainContent;I)I

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent$4;->this$0:Lcom/android/camera/fragment/FragmentMainContent;

    iget p0, p0, Lcom/android/camera/fragment/FragmentMainContent$4;->val$result:I

    const/16 v1, 0xa0

    invoke-static {v0, v1, p0}, Lcom/android/camera/fragment/FragmentMainContent;->access$700(Lcom/android/camera/fragment/FragmentMainContent;II)V

    return-void
.end method
