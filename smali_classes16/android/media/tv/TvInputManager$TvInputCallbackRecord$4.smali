.class Landroid/media/tv/TvInputManager$TvInputCallbackRecord$4;
.super Ljava/lang/Object;
.source "TvInputManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->postInputStateChanged(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

.field final synthetic val$inputId:Ljava/lang/String;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputManager$TvInputCallbackRecord;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$4;->this$0:Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    iput-object p2, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$4;->val$inputId:Ljava/lang/String;

    iput p3, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$4;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$4;->this$0:Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    # getter for: Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->mCallback:Landroid/media/tv/TvInputManager$TvInputCallback;
    invoke-static {v0}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->access$200(Landroid/media/tv/TvInputManager$TvInputCallbackRecord;)Landroid/media/tv/TvInputManager$TvInputCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$4;->val$inputId:Ljava/lang/String;

    iget v2, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$4;->val$state:I

    invoke-virtual {v0, v1, v2}, Landroid/media/tv/TvInputManager$TvInputCallback;->onInputStateChanged(Ljava/lang/String;I)V

    return-void
.end method
