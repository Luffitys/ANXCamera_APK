.class Lcom/android/internal/accessibility/AccessibilityShortcutController$1;
.super Landroid/database/ContentObserver;
.source "AccessibilityShortcutController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/accessibility/AccessibilityShortcutController;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;


# direct methods
.method constructor <init>(Lcom/android/internal/accessibility/AccessibilityShortcutController;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$1;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLjava/util/Collection;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;II)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$1;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    # getter for: Lcom/android/internal/accessibility/AccessibilityShortcutController;->mUserId:I
    invoke-static {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->access$000(Lcom/android/internal/accessibility/AccessibilityShortcutController;)I

    move-result v0

    if-ne p4, v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$1;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->onSettingsChanged()V

    :cond_d
    return-void
.end method
