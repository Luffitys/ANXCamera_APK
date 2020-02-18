.class Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$5;
.super Ljava/lang/Object;
.source "FragmentMimojiEdit.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->showAlertDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


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
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$5;->val$backType:I

    const/4 p2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, p2, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    if-nez p1, :cond_3

    iget-object v2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$5;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    invoke-static {v2}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->access$1100(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$5;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    invoke-static {v2}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->access$500(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)Lcom/arcsoft/avatar/AvatarEngine;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$5;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    invoke-static {v3}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->access$1200(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$5;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    invoke-static {v3}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->access$1300(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    sget-object v3, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->TempOriginalConfigPath:Ljava/lang/String;

    :goto_2
    invoke-virtual {v2, v3}, Lcom/arcsoft/avatar/AvatarEngine;->loadConfig(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$5;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    invoke-virtual {v2, p1, v0}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->goBack(ZZ)V

    iget p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$5;->val$backType:I

    const-string v2, "preview_mid"

    if-eq p1, v1, :cond_8

    if-eq p1, p2, :cond_7

    const/4 p2, 0x3

    if-eq p1, p2, :cond_6

    const/4 p2, 0x4

    if-eq p1, p2, :cond_5

    const/4 p2, 0x5

    if-eq p1, p2, :cond_4

    goto :goto_3

    :cond_4
    const-string p1, "edit_cancel"

    invoke-static {p1, v2}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string p1, "edit_soft_back"

    const-string p2, "edit"

    invoke-static {p1, p2}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string p1, "preview_mid_soft_back"

    invoke-static {p1, v2}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const-string p1, "preview_mid_recapture"

    invoke-static {p1, v2}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    const-string p1, "mimoji_click_preview_mid_back"

    invoke-static {p1, v2}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$5;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    invoke-static {p0, v0}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->access$1402(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;Z)Z

    return-void
.end method
