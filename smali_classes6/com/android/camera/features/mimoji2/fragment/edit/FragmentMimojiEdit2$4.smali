.class Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;

.field final synthetic val$backType:I


# direct methods
.method constructor <init>(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2$4;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;

    iput p2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2$4;->val$backType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2$4;->val$backType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2$4;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;

    invoke-static {v3}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->access$1200(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2$4;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;

    invoke-static {v3}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->access$500(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;)Lcom/arcsoft/avatar2/AvatarEngine;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2$4;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;

    invoke-static {v4}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->access$600(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2$4;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;

    invoke-static {v4}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->access$1300(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->TempOriginalConfigPath:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v4}, Lcom/arcsoft/avatar2/AvatarEngine;->loadConfig(Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2$4;->this$0:Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;

    invoke-virtual {v3, v0, v1}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2;->goBack(ZZ)V

    iget p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEdit2$4;->val$backType:I

    const-string v0, "preview_mid"

    if-eq p0, v2, :cond_6

    const/4 v1, 0x3

    if-eq p0, v1, :cond_5

    const/4 v1, 0x4

    if-eq p0, v1, :cond_4

    const/4 v1, 0x5

    if-eq p0, v1, :cond_3

    goto :goto_3

    :cond_3
    const-string p0, "edit_cancel"

    goto :goto_2

    :cond_4
    const-string p0, "edit_soft_back"

    const-string v0, "edit"

    goto :goto_2

    :cond_5
    const-string p0, "preview_mid_soft_back"

    goto :goto_2

    :cond_6
    const-string p0, "mimoji_click_preview_mid_back"

    :goto_2
    invoke-static {p0, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method
