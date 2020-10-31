.class public final synthetic Landroid/view/accessibility/-$$Lambda$AccessibilityManager$4M6GrmFiqsRwVzn352N10DcU6RM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/accessibility/-$$Lambda$AccessibilityManager$4M6GrmFiqsRwVzn352N10DcU6RM;->f$0:Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;

    iput-boolean p2, p0, Landroid/view/accessibility/-$$Lambda$AccessibilityManager$4M6GrmFiqsRwVzn352N10DcU6RM;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/view/accessibility/-$$Lambda$AccessibilityManager$4M6GrmFiqsRwVzn352N10DcU6RM;->f$0:Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;

    iget-boolean v1, p0, Landroid/view/accessibility/-$$Lambda$AccessibilityManager$4M6GrmFiqsRwVzn352N10DcU6RM;->f$1:Z

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->lambda$notifyHighTextContrastStateChanged$2(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;Z)V

    return-void
.end method
