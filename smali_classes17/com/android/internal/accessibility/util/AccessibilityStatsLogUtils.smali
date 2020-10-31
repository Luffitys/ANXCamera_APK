.class public final Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;
.super Ljava/lang/Object;
.source "AccessibilityStatsLogUtils.java"


# static fields
.field private static final UNKNOWN_STATUS:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToLoggingServiceStatus(Z)I
    .registers 2

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x2

    :goto_5
    return v0
.end method

.method private static convertToLoggingShortcutType(I)I
    .registers 2

    const/4 v0, 0x1

    if-eqz p0, :cond_9

    if-eq p0, v0, :cond_7

    const/4 v0, 0x0

    return v0

    :cond_7
    const/4 v0, 0x2

    return v0

    :cond_9
    return v0
.end method

.method public static logAccessibilityButtonLongPressStatus(Landroid/content/ComponentName;)V
    .registers 5

    nop

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10a

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;II)V

    return-void
.end method

.method public static logAccessibilityShortcutActivated(Landroid/content/ComponentName;I)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/ComponentName;II)V

    return-void
.end method

.method private static logAccessibilityShortcutActivated(Landroid/content/ComponentName;II)V
    .registers 6

    nop

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->convertToLoggingShortcutType(I)I

    move-result v1

    const/16 v2, 0x10a

    invoke-static {v2, v0, v1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;II)V

    return-void
.end method

.method public static logAccessibilityShortcutActivated(Landroid/content/ComponentName;IZ)V
    .registers 4

    nop

    invoke-static {p2}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->convertToLoggingServiceStatus(Z)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/ComponentName;II)V

    return-void
.end method

.method public static logMagnificationTripleTap(Z)V
    .registers 5

    sget-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->MAGNIFICATION_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->convertToLoggingServiceStatus(Z)I

    move-result v1

    const/16 v2, 0x10a

    const/4 v3, 0x3

    invoke-static {v2, v0, v3, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;II)V

    return-void
.end method
