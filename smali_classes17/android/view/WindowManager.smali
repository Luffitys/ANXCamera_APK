.class public interface abstract Landroid/view/WindowManager;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Landroid/view/ViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManager$LayoutParams;,
        Landroid/view/WindowManager$ScreenshotSource;,
        Landroid/view/WindowManager$KeyboardShortcutsReceiver;,
        Landroid/view/WindowManager$InvalidDisplayException;,
        Landroid/view/WindowManager$BadTokenException;,
        Landroid/view/WindowManager$RemoveContentMode;,
        Landroid/view/WindowManager$TransitionFlags;,
        Landroid/view/WindowManager$TransitionType;
    }
.end annotation


# static fields
.field public static final DOCKED_BOTTOM:I = 0x4

.field public static final DOCKED_INVALID:I = -0x1

.field public static final DOCKED_LEFT:I = 0x1

.field public static final DOCKED_RIGHT:I = 0x3

.field public static final DOCKED_TOP:I = 0x2

.field public static final INPUT_CONSUMER_NAVIGATION:Ljava/lang/String; = "nav_input_consumer"

.field public static final INPUT_CONSUMER_PIP:Ljava/lang/String; = "pip_input_consumer"

.field public static final INPUT_CONSUMER_RECENTS_ANIMATION:Ljava/lang/String; = "recents_animation_input_consumer"

.field public static final INPUT_CONSUMER_WALLPAPER:Ljava/lang/String; = "wallpaper_input_consumer"

.field public static final PARCEL_KEY_SHORTCUTS_ARRAY:Ljava/lang/String; = "shortcuts_array"

.field public static final REMOVE_CONTENT_MODE_DESTROY:I = 0x2

.field public static final REMOVE_CONTENT_MODE_MOVE_TO_PRIMARY:I = 0x1

.field public static final REMOVE_CONTENT_MODE_UNDEFINED:I = 0x0

.field public static final TAKE_SCREENSHOT_FULLSCREEN:I = 0x1

.field public static final TAKE_SCREENSHOT_PROVIDED_IMAGE:I = 0x3

.field public static final TAKE_SCREENSHOT_SELECTED_REGION:I = 0x2

.field public static final TRANSIT_ACTIVITY_CLOSE:I = 0x7

.field public static final TRANSIT_ACTIVITY_OPEN:I = 0x6

.field public static final TRANSIT_ACTIVITY_RELAUNCH:I = 0x12

.field public static final TRANSIT_CRASHING_ACTIVITY_CLOSE:I = 0x1a

.field public static final TRANSIT_DOCK_TASK_FROM_RECENTS:I = 0x13

.field public static final TRANSIT_FLAG_KEYGUARD_GOING_AWAY_NO_ANIMATION:I = 0x2

.field public static final TRANSIT_FLAG_KEYGUARD_GOING_AWAY_SUBTLE_ANIMATION:I = 0x8

.field public static final TRANSIT_FLAG_KEYGUARD_GOING_AWAY_TO_SHADE:I = 0x1

.field public static final TRANSIT_FLAG_KEYGUARD_GOING_AWAY_WITH_WALLPAPER:I = 0x4

.field public static final TRANSIT_KEYGUARD_GOING_AWAY:I = 0x14

.field public static final TRANSIT_KEYGUARD_GOING_AWAY_ON_WALLPAPER:I = 0x15

.field public static final TRANSIT_KEYGUARD_OCCLUDE:I = 0x16

.field public static final TRANSIT_KEYGUARD_UNOCCLUDE:I = 0x17

.field public static final TRANSIT_NONE:I = 0x0

.field public static final TRANSIT_SHOW_SINGLE_TASK_DISPLAY:I = 0x1c

.field public static final TRANSIT_TASK_CHANGE_WINDOWING_MODE:I = 0x1b

.field public static final TRANSIT_TASK_CLOSE:I = 0x9

.field public static final TRANSIT_TASK_OPEN:I = 0x8

.field public static final TRANSIT_TASK_OPEN_BEHIND:I = 0x10

.field public static final TRANSIT_TASK_TO_BACK:I = 0xb

.field public static final TRANSIT_TASK_TO_FRONT:I = 0xa

.field public static final TRANSIT_TRANSLUCENT_ACTIVITY_CLOSE:I = 0x19

.field public static final TRANSIT_TRANSLUCENT_ACTIVITY_OPEN:I = 0x18

.field public static final TRANSIT_UNSET:I = -0x1

.field public static final TRANSIT_WALLPAPER_CLOSE:I = 0xc

.field public static final TRANSIT_WALLPAPER_INTRA_CLOSE:I = 0xf

.field public static final TRANSIT_WALLPAPER_INTRA_OPEN:I = 0xe

.field public static final TRANSIT_WALLPAPER_OPEN:I = 0xd


# virtual methods
.method public abstract getCurrentImeTouchRegion()Landroid/graphics/Region;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public getCurrentWindowMetrics()Landroid/view/WindowMetrics;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract getDefaultDisplay()Landroid/view/Display;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getMaximumWindowMetrics()Landroid/view/WindowMetrics;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract removeViewImmediate(Landroid/view/View;)V
.end method

.method public abstract requestAppKeyboardShortcuts(Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V
.end method

.method public setShouldShowIme(IZ)V
    .registers 3

    return-void
.end method

.method public setShouldShowSystemDecors(IZ)V
    .registers 3

    return-void
.end method

.method public setShouldShowWithInsecureKeyguard(IZ)V
    .registers 3

    return-void
.end method

.method public shouldShowIme(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public shouldShowSystemDecors(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
