.class public interface abstract Landroid/provider/Telephony$RcsColumns$RcsUnifiedEventHelper;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/Telephony$RcsColumns$RcsParticipantEventColumns;
.implements Landroid/provider/Telephony$RcsColumns$RcsThreadEventColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$RcsColumns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RcsUnifiedEventHelper"
.end annotation


# static fields
.field public static final RCS_EVENT_QUERY_URI:Landroid/net/Uri;

.field public static final RCS_EVENT_QUERY_URI_PATH:Ljava/lang/String; = "event"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Landroid/provider/Telephony$RcsColumns;->CONTENT_AND_AUTHORITY:Landroid/net/Uri;

    const-string v1, "event"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$RcsColumns$RcsUnifiedEventHelper;->RCS_EVENT_QUERY_URI:Landroid/net/Uri;

    return-void
.end method
