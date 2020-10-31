.class public final synthetic Lcom/android/internal/accessibility/-$$Lambda$AccessibilityShortcutController$cQtLiNhDc4H3BvMBZy00zj21oKg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/accessibility/-$$Lambda$AccessibilityShortcutController$cQtLiNhDc4H3BvMBZy00zj21oKg;->f$0:Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/accessibility/-$$Lambda$AccessibilityShortcutController$cQtLiNhDc4H3BvMBZy00zj21oKg;->f$0:Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;

    invoke-static {v0, p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->lambda$performTtsPrompt$2(Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;Landroid/content/DialogInterface;)V

    return-void
.end method
