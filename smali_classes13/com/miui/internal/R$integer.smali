.class public final Lcom/miui/internal/R$integer;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "integer"
.end annotation


# static fields
.field public static abc_max_action_buttons:I

.field public static action_bar_appear_duration:I

.field public static action_bar_disappear_duration:I

.field public static action_bar_tab_layout_weight:I

.field public static action_menu_item_anim_delay:I

.field public static action_menu_item_appear_duration:I

.field public static button_exit_fade_duration:I

.field public static window_translucent_status:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x10080000

    sput v0, Lcom/miui/internal/R$integer;->abc_max_action_buttons:I

    const v0, 0x10080002

    sput v0, Lcom/miui/internal/R$integer;->action_bar_appear_duration:I

    const v0, 0x10080003

    sput v0, Lcom/miui/internal/R$integer;->action_bar_disappear_duration:I

    const v0, 0x10080004

    sput v0, Lcom/miui/internal/R$integer;->action_bar_tab_layout_weight:I

    const v0, 0x10080005

    sput v0, Lcom/miui/internal/R$integer;->action_menu_item_anim_delay:I

    const v0, 0x10080006

    sput v0, Lcom/miui/internal/R$integer;->action_menu_item_appear_duration:I

    const v0, 0x10080001

    sput v0, Lcom/miui/internal/R$integer;->button_exit_fade_duration:I

    const v0, 0x10080019

    sput v0, Lcom/miui/internal/R$integer;->window_translucent_status:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
