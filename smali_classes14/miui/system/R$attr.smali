.class public final Lmiui/system/R$attr;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/system/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field public static capability:I

.field public static cloudStateViewStyle:I

.field public static contentAuthority:I

.field public static enabled:I

.field public static message:I

.field public static name:I

.field public static optional:I

.field public static permission:I

.field public static pushName:I

.field public static pushType:I

.field public static vipShowModel:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x12010000

    sput v0, Lmiui/system/R$attr;->capability:I

    const v0, 0x12010004

    sput v0, Lmiui/system/R$attr;->cloudStateViewStyle:I

    const v0, 0x12010001

    sput v0, Lmiui/system/R$attr;->contentAuthority:I

    const v0, 0x1201000a

    sput v0, Lmiui/system/R$attr;->enabled:I

    const v0, 0x12010008

    sput v0, Lmiui/system/R$attr;->message:I

    const v0, 0x12010006

    sput v0, Lmiui/system/R$attr;->name:I

    const v0, 0x12010007

    sput v0, Lmiui/system/R$attr;->optional:I

    const v0, 0x12010009

    sput v0, Lmiui/system/R$attr;->permission:I

    const v0, 0x12010002

    sput v0, Lmiui/system/R$attr;->pushName:I

    const v0, 0x12010003

    sput v0, Lmiui/system/R$attr;->pushType:I

    const v0, 0x12010005

    sput v0, Lmiui/system/R$attr;->vipShowModel:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
