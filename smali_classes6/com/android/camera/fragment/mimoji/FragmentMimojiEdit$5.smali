.class Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

.field final synthetic val$backType:I


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$5;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    iput p2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$5;->val$backType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$5;->val$backType:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    if-nez v0, :cond_3

    iget-object v4, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$5;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    invoke-static {v4}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->access$1100(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$5;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    invoke-static {v4}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->access$500(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)Lcom/arcsoft/avatar/AvatarEngine;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$5;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    invoke-static {v5}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->access$1200(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$5;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    invoke-static {v5}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->access$1300(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    sget-object v5, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->TempOriginalConfigPath:Ljava/lang/String;

    :goto_2
    invoke-virtual {v4, v5}, Lcom/arcsoft/avatar/AvatarEngine;->loadConfig(Ljava/lang/String;)V

    :cond_3
    iget-object v4, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$5;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    invoke-virtual {v4, v0, v1}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->goBack(ZZ)V

    iget p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$5;->val$backType:I

    const-string v0, "preview_mid"

    if-eq p0, v3, :cond_8

    if-eq p0, v2, :cond_7

    const/4 v1, 0x3

    if-eq p0, v1, :cond_6

    const/4 v1, 0x4

    if-eq p0, v1, :cond_5

    const/4 v1, 0x5

    if-eq p0, v1, :cond_4

    goto :goto_4

    :cond_4
    const-string p0, "edit_cancel"

    goto :goto_3

    :cond_5
    const-string p0, "edit_soft_back"

    const-string v0, "edit"

    goto :goto_3

    :cond_6
    const-string p0, "preview_mid_soft_back"

    goto :goto_3

    :cond_7
    const-string p0, "preview_mid_recapture"

    goto :goto_3

    :cond_8
    const-string p0, "mimoji_click_preview_mid_back"

    :goto_3
    invoke-static {p0, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method
