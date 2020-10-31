.class public final Lcom/miui/internal/R$anim;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "anim"
.end annotation


# static fields
.field public static action_bar_fade_in:I

.field public static action_bar_fade_out:I

.field public static action_bar_slide_in_bottom:I

.field public static action_bar_slide_in_top:I

.field public static action_bar_slide_out_bottom:I

.field public static action_bar_slide_out_top:I

.field public static dialog_exit:I

.field public static dialog_scale_down:I

.field public static immersion_layout_fade_in:I

.field public static immersion_layout_fade_out:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x10040005

    sput v0, Lcom/miui/internal/R$anim;->action_bar_fade_in:I

    const v0, 0x10040006

    sput v0, Lcom/miui/internal/R$anim;->action_bar_fade_out:I

    const v0, 0x10040001

    sput v0, Lcom/miui/internal/R$anim;->action_bar_slide_in_bottom:I

    const v0, 0x10040002

    sput v0, Lcom/miui/internal/R$anim;->action_bar_slide_in_top:I

    const v0, 0x10040003

    sput v0, Lcom/miui/internal/R$anim;->action_bar_slide_out_bottom:I

    const v0, 0x10040004

    sput v0, Lcom/miui/internal/R$anim;->action_bar_slide_out_top:I

    const/high16 v0, 0x10040000

    sput v0, Lcom/miui/internal/R$anim;->dialog_exit:I

    const v0, 0x1004000a

    sput v0, Lcom/miui/internal/R$anim;->dialog_scale_down:I

    const v0, 0x1004000f

    sput v0, Lcom/miui/internal/R$anim;->immersion_layout_fade_in:I

    const v0, 0x10040010

    sput v0, Lcom/miui/internal/R$anim;->immersion_layout_fade_out:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
