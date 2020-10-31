.class public final Lcom/miui/internal/R$bool;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "bool"
.end annotation


# static fields
.field public static abc_action_bar_expanded_action_views_exclusive:I

.field public static abc_config_allowActionMenuItemTextWithIcon:I

.field public static abc_config_showMenuShortcutsWhenKeyboardPresent:I

.field public static abc_split_action_bar_is_narrow:I

.field public static action_bar_embed_tabs:I

.field public static check_widget_anim_enable:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x100e0000

    sput v0, Lcom/miui/internal/R$bool;->abc_action_bar_expanded_action_views_exclusive:I

    const v0, 0x100e0002

    sput v0, Lcom/miui/internal/R$bool;->abc_config_allowActionMenuItemTextWithIcon:I

    const v0, 0x100e0003

    sput v0, Lcom/miui/internal/R$bool;->abc_config_showMenuShortcutsWhenKeyboardPresent:I

    const v0, 0x100e0004

    sput v0, Lcom/miui/internal/R$bool;->abc_split_action_bar_is_narrow:I

    const v0, 0x100e0005

    sput v0, Lcom/miui/internal/R$bool;->action_bar_embed_tabs:I

    const v0, 0x100e0008

    sput v0, Lcom/miui/internal/R$bool;->check_widget_anim_enable:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
