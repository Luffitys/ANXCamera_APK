.class public final Landroid/provider/Telephony$CarrierId$All;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$CarrierId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "All"
.end annotation


# static fields
.field public static final APN:Ljava/lang/String; = "apn"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final GID1:Ljava/lang/String; = "gid1"

.field public static final GID2:Ljava/lang/String; = "gid2"

.field public static final ICCID_PREFIX:Ljava/lang/String; = "iccid_prefix"

.field public static final IMSI_PREFIX_XPATTERN:Ljava/lang/String; = "imsi_prefix_xpattern"

.field public static final MCCMNC:Ljava/lang/String; = "mccmnc"

.field public static final PLMN:Ljava/lang/String; = "plmn"

.field public static final PRIVILEGE_ACCESS_RULE:Ljava/lang/String; = "privilege_access_rule"

.field public static final SPN:Ljava/lang/String; = "spn"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://carrier_id/all"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$CarrierId$All;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
