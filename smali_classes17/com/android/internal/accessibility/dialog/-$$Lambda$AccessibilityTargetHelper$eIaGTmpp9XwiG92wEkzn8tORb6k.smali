.class public final synthetic Lcom/android/internal/accessibility/dialog/-$$Lambda$AccessibilityTargetHelper$eIaGTmpp9XwiG92wEkzn8tORb6k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/accessibility/dialog/AccessibilityTarget;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/accessibility/dialog/AccessibilityTarget;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/accessibility/dialog/-$$Lambda$AccessibilityTargetHelper$eIaGTmpp9XwiG92wEkzn8tORb6k;->f$0:Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/-$$Lambda$AccessibilityTargetHelper$eIaGTmpp9XwiG92wEkzn8tORb6k;->f$0:Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    check-cast p1, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    invoke-static {v0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->lambda$getAccessibilityFilteredTargets$0(Lcom/android/internal/accessibility/dialog/AccessibilityTarget;Lcom/android/internal/accessibility/dialog/AccessibilityTarget;)Z

    move-result p1

    return p1
.end method
