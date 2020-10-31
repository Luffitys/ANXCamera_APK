.class public interface abstract Landroid/provider/Telephony$RcsColumns$RcsIncomingMessageColumns;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/Telephony$RcsColumns$RcsMessageColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$RcsColumns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RcsIncomingMessageColumns"
.end annotation


# static fields
.field public static final ARRIVAL_TIMESTAMP_COLUMN:Ljava/lang/String; = "arrival_timestamp"

.field public static final INCOMING_MESSAGE_URI:Landroid/net/Uri;

.field public static final INCOMING_MESSAGE_URI_PART:Ljava/lang/String; = "incoming_message"

.field public static final SEEN_TIMESTAMP_COLUMN:Ljava/lang/String; = "seen_timestamp"

.field public static final SENDER_PARTICIPANT_ID_COLUMN:Ljava/lang/String; = "sender_participant"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Landroid/provider/Telephony$RcsColumns;->CONTENT_AND_AUTHORITY:Landroid/net/Uri;

    const-string v1, "incoming_message"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$RcsColumns$RcsIncomingMessageColumns;->INCOMING_MESSAGE_URI:Landroid/net/Uri;

    return-void
.end method
