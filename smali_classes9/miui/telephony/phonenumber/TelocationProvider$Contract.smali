.class public Lmiui/telephony/phonenumber/TelocationProvider$Contract;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final COLUMNS:[Ljava/lang/String;

.field public static final PARSE_AREA_CODE:Ljava/lang/String; = "parse_area_code"

.field public static final QUERY_AREA_CODE:Ljava/lang/String; = "query_area_code"

.field public static final QUERY_AREA_CODE_BY_ADDRESS:Ljava/lang/String; = "query_area_code_by_address"

.field public static final QUERY_LOCATION:Ljava/lang/String; = "query_location"

.field public static final QUERY_OPERATOR:Ljava/lang/String; = "query_operator"

.field public static final QUERY_UNIQ_ID:Ljava/lang/String; = "query_uniq_id"

.field public static final QUERY_VERSION:Ljava/lang/String; = "query_version"

.field public static final RELOAD:Ljava/lang/String; = "reload"

.field public static final URI_PARSE_AREA_CODE:I = 0x4

.field public static final URI_QUERY_AREA_CODE:I = 0x3

.field public static final URI_QUERY_AREA_CODE_BY_ADDRESS:I = 0x8

.field public static final URI_QUERY_LOCATION:I = 0x2

.field public static final URI_QUERY_OPERATOR:I = 0x5

.field public static final URI_QUERY_UNIQ_ID:I = 0x7

.field public static final URI_QUERY_VERSION:I = 0x6

.field public static final URI_RELOAD:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "_id"

    const-string v1, "location"

    const-string v2, "query_area_code"

    const-string v3, "parse_area_code"

    const-string v4, "operator"

    const-string v5, "version"

    const-string v6, "uniq_id"

    const-string v7, "query_area_code_by_address"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/telephony/phonenumber/TelocationProvider$Contract;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
