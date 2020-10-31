.class public final synthetic Landroid/accessibilityservice/-$$Lambda$AccessibilityButtonController$b_UAM9QJWcH4KQOC_odiN0t_boU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/accessibilityservice/AccessibilityButtonController;

.field public final synthetic f$1:Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/accessibilityservice/AccessibilityButtonController;Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/accessibilityservice/-$$Lambda$AccessibilityButtonController$b_UAM9QJWcH4KQOC_odiN0t_boU;->f$0:Landroid/accessibilityservice/AccessibilityButtonController;

    iput-object p2, p0, Landroid/accessibilityservice/-$$Lambda$AccessibilityButtonController$b_UAM9QJWcH4KQOC_odiN0t_boU;->f$1:Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/accessibilityservice/-$$Lambda$AccessibilityButtonController$b_UAM9QJWcH4KQOC_odiN0t_boU;->f$0:Landroid/accessibilityservice/AccessibilityButtonController;

    iget-object v1, p0, Landroid/accessibilityservice/-$$Lambda$AccessibilityButtonController$b_UAM9QJWcH4KQOC_odiN0t_boU;->f$1:Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/AccessibilityButtonController;->lambda$dispatchAccessibilityButtonClicked$0$AccessibilityButtonController(Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;)V

    return-void
.end method
