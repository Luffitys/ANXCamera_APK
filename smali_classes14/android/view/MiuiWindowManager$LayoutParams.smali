.class public Landroid/view/MiuiWindowManager$LayoutParams;
.super Landroid/view/WindowManager$LayoutParams;
.source "MiuiWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MiuiWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final EXTRA_FLAG_ACQUIRES_SLEEP_TOKEN:I = 0x400000

.field public static final EXTRA_FLAG_DISABLE_FOD_ICON:I = 0x8000

.field public static final EXTRA_FLAG_ENABLE_NOTCH_CONFIG:I = 0x100

.field public static final EXTRA_FLAG_FINDDEVICE_KEYGUARD:I = 0x800

.field public static final EXTRA_FLAG_FULLSCREEN_BLURSURFACE:I = 0x4000000

.field public static final EXTRA_FLAG_IS_CALL_SCREEN_PROJECTION:I = 0x4000

.field public static final EXTRA_FLAG_IS_NO_SCREENSHOT:I = 0x800000

.field public static final EXTRA_FLAG_IS_PIP_SCREEN_PROJECTION:I = 0x2000000

.field public static final EXTRA_FLAG_IS_SCREEN_PROJECTION:I = 0x1000000

.field public static final EXTRA_FLAG_LAYOUT_NOTCH_LANDSCAPE:I = 0x400

.field public static final EXTRA_FLAG_LAYOUT_NOTCH_PORTRAIT:I = 0x200

.field public static final EXTRA_FLAG_NAVIGATION_BAR_DARK_MODE:I = 0x40

.field public static final EXTRA_FLAG_SHOW_ON_FINDDEVICE_KEYGUARD:I = 0x1000

.field public static final EXTRA_FLAG_STATUS_BAR_DARK_MODE:I = 0x10

.field public static final EXTRA_FLAG_STATUS_BAR_HIDE:I = 0x20

.field public static final EXTRA_FLAG_STATUS_BAR_LOW_PROFILE:I = 0x2

.field public static final EXTRA_FLAG_STATUS_BAR_MASK:I = 0x3b

.field public static final EXTRA_FLAG_STATUS_BAR_SIMPLE_MODE:I = 0x8

.field public static final EXTRA_FLAG_STATUS_BAR_TRANSPARENT:I = 0x1

.field public static final PRIVATE_FLAG_LOCKSCREEN_DISPALY_DESKTOP:I = 0x8000000


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    return-void
.end method
