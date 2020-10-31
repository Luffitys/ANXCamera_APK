.class public final Lmiui/system/R$color;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/system/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "color"
.end annotation


# static fields
.field public static blur_background_mask:I

.field public static large_date_text_color:I

.field public static miui_common_text_color_new:I

.field public static miui_common_time_dark_text_color:I

.field public static miui_owner_info_dark_text_color:I

.field public static miui_owner_info_light_text_color:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x12060000

    sput v0, Lmiui/system/R$color;->blur_background_mask:I

    const v0, 0x12060003

    sput v0, Lmiui/system/R$color;->large_date_text_color:I

    const v0, 0x12060002

    sput v0, Lmiui/system/R$color;->miui_common_text_color_new:I

    const v0, 0x12060001

    sput v0, Lmiui/system/R$color;->miui_common_time_dark_text_color:I

    const v0, 0x12060004

    sput v0, Lmiui/system/R$color;->miui_owner_info_dark_text_color:I

    const v0, 0x12060005

    sput v0, Lmiui/system/R$color;->miui_owner_info_light_text_color:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
