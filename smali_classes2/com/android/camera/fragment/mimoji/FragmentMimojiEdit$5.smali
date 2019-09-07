.class Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$5;
.super Ljava/lang/Object;
.source "FragmentMimojiEdit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->resetConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$5;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$5;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    const/4 v1, 0x1

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->startMimojiEdit(ZI)V

    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$5;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    invoke-static {v0}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->access$100(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)Lcom/android/camera/ui/MimojiEditGLTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/MimojiEditGLTextureView;->setupAvatar()V

    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$5;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    invoke-static {v0}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->access$700(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)Lcom/arcsoft/avatar/AvatarEngine;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$5;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    invoke-static {p0}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->access$600(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->TempEditConfigPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->TempOriginalConfigPath:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p0}, Lcom/arcsoft/avatar/AvatarEngine;->loadConfig(Ljava/lang/String;)V

    return-void
.end method
