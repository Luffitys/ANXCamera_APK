.class public final Lmiui/system/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/system/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field public static cloud_panel:I

.field public static micloud_state_view:I

.field public static miui_center_horizontal_clock:I

.field public static miui_dual_clock:I

.field public static miui_left_top_clock:I

.field public static miui_left_top_large_clock:I

.field public static miui_vertical_clock:I

.field public static provision_bg:I

.field public static provision_page_layout:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x12030000

    sput v0, Lmiui/system/R$layout;->cloud_panel:I

    const v0, 0x12030001

    sput v0, Lmiui/system/R$layout;->micloud_state_view:I

    const v0, 0x12030004

    sput v0, Lmiui/system/R$layout;->miui_center_horizontal_clock:I

    const v0, 0x12030005

    sput v0, Lmiui/system/R$layout;->miui_dual_clock:I

    const v0, 0x12030006

    sput v0, Lmiui/system/R$layout;->miui_left_top_clock:I

    const v0, 0x12030007

    sput v0, Lmiui/system/R$layout;->miui_left_top_large_clock:I

    const v0, 0x12030008

    sput v0, Lmiui/system/R$layout;->miui_vertical_clock:I

    const v0, 0x12030002

    sput v0, Lmiui/system/R$layout;->provision_bg:I

    const v0, 0x12030003

    sput v0, Lmiui/system/R$layout;->provision_page_layout:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
