.class final Landroid/view/accessibility/AccessibilityManager$MyCallback;
.super Ljava/lang/Object;
.source "AccessibilityManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyCallback"
.end annotation


# static fields
.field public static final MSG_SET_STATE:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method private constructor <init>(Landroid/view/accessibility/AccessibilityManager;)V
    .registers 2

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityManager$MyCallback;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/accessibility/AccessibilityManager;Landroid/view/accessibility/AccessibilityManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityManager$MyCallback;-><init>(Landroid/view/accessibility/AccessibilityManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_15

    :cond_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager$MyCallback;->this$0:Landroid/view/accessibility/AccessibilityManager;

    # getter for: Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->access$100(Landroid/view/accessibility/AccessibilityManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_f
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager$MyCallback;->this$0:Landroid/view/accessibility/AccessibilityManager;

    # invokes: Landroid/view/accessibility/AccessibilityManager;->setStateLocked(I)V
    invoke-static {v3, v0}, Landroid/view/accessibility/AccessibilityManager;->access$400(Landroid/view/accessibility/AccessibilityManager;I)V

    monitor-exit v2

    :goto_15
    return v1

    :catchall_16
    move-exception v1

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    throw v1
.end method
