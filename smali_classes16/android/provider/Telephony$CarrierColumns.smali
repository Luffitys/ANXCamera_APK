.class public interface abstract Landroid/provider/Telephony$CarrierColumns;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CarrierColumns"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final EXPIRATION_TIME:Ljava/lang/String; = "expiration_time"

.field public static final KEY_IDENTIFIER:Ljava/lang/String; = "key_identifier"

.field public static final KEY_TYPE:Ljava/lang/String; = "key_type"

.field public static final LAST_MODIFIED:Ljava/lang/String; = "last_modified"

.field public static final MCC:Ljava/lang/String; = "mcc"

.field public static final MNC:Ljava/lang/String; = "mnc"

.field public static final MVNO_MATCH_DATA:Ljava/lang/String; = "mvno_match_data"

.field public static final MVNO_TYPE:Ljava/lang/String; = "mvno_type"

.field public static final PUBLIC_KEY:Ljava/lang/String; = "public_key"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://carrier_information/carrier"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$CarrierColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
