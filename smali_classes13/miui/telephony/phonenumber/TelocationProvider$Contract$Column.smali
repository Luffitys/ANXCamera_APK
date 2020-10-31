.class public Lmiui/telephony/phonenumber/TelocationProvider$Contract$Column;
.super Ljava/lang/Object;
.source "TelocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/phonenumber/TelocationProvider$Contract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Column"
.end annotation


# static fields
.field public static final INDEX_ID:I = 0x0

.field public static final INDEX_LOCATION:I = 0x1

.field public static final INDEX_OPERATOR:I = 0x4

.field public static final INDEX_PARSE_AREA_CODE:I = 0x3

.field public static final INDEX_QUERY_AREA_CODE:I = 0x2

.field public static final INDEX_QUERY_AREA_CODE_BY_ADDRESS:I = 0x7

.field public static final INDEX_UNIQ_ID:I = 0x6

.field public static final INDEX_VERSION:I = 0x5

.field public static final LOCATION:Ljava/lang/String; = "location"

.field public static final OPERATOR:Ljava/lang/String; = "operator"

.field public static final PARSE_AREA_CODE:Ljava/lang/String; = "parse_area_code"

.field public static final QUERY_AREA_CODE:Ljava/lang/String; = "query_area_code"

.field public static final QUERY_AREA_CODE_BY_ADDRESS:Ljava/lang/String; = "query_area_code_by_address"

.field public static final UNIQ_ID:Ljava/lang/String; = "uniq_id"

.field public static final VERSION:Ljava/lang/String; = "version"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
