.class public Lmiui/provider/PhoneConstants;
.super Ljava/lang/Object;
.source "PhoneConstants.java"


# static fields
.field public static PRESENTATION_ALLOWED:I

.field public static PRESENTATION_PAYPHONE:I

.field public static PRESENTATION_RESTRICTED:I

.field public static PRESENTATION_UNKNOWN:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput v0, Lmiui/provider/PhoneConstants;->PRESENTATION_ALLOWED:I

    const/4 v0, 0x2

    sput v0, Lmiui/provider/PhoneConstants;->PRESENTATION_RESTRICTED:I

    const/4 v0, 0x3

    sput v0, Lmiui/provider/PhoneConstants;->PRESENTATION_UNKNOWN:I

    const/4 v0, 0x4

    sput v0, Lmiui/provider/PhoneConstants;->PRESENTATION_PAYPHONE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
