.class Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/fragment/mimoji/EditLevelListAdapter$ItfGvOnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$2;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyUIChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$2;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->access$302(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;Z)Z

    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$2;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    invoke-static {v0}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->access$400(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)I

    move-result v0

    const/16 v1, 0x69

    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$2;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->updateTitleState(I)V

    return-void
.end method
