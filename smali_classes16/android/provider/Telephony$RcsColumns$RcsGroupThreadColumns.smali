.class public interface abstract Landroid/provider/Telephony$RcsColumns$RcsGroupThreadColumns;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/Telephony$RcsColumns$RcsThreadColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$RcsColumns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RcsGroupThreadColumns"
.end annotation


# static fields
.field public static final CONFERENCE_URI_COLUMN:Ljava/lang/String; = "conference_uri"

.field public static final GROUP_ICON_COLUMN:Ljava/lang/String; = "group_icon"

.field public static final GROUP_NAME_COLUMN:Ljava/lang/String; = "group_name"

.field public static final OWNER_PARTICIPANT_COLUMN:Ljava/lang/String; = "owner_participant"

.field public static final RCS_GROUP_THREAD_URI:Landroid/net/Uri;

.field public static final RCS_GROUP_THREAD_URI_PART:Ljava/lang/String; = "group_thread"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Landroid/provider/Telephony$RcsColumns;->CONTENT_AND_AUTHORITY:Landroid/net/Uri;

    const-string v1, "group_thread"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$RcsColumns$RcsGroupThreadColumns;->RCS_GROUP_THREAD_URI:Landroid/net/Uri;

    return-void
.end method
