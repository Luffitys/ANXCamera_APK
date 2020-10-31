.class public Lmiui/provider/Recordings$RecordingNotifications;
.super Ljava/lang/Object;
.source "Recordings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/Recordings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecordingNotifications"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/Recordings$RecordingNotifications$Columns;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final EXTRA_DIRPATH:Ljava/lang/String; = "extra_dirpath"

.field public static final EXTRA_RECTYPE:Ljava/lang/String; = "extra_rectype"

.field public static final TABLE_NAME:Ljava/lang/String; = "recordingnotifications"

.field public static final URI_PATH:Ljava/lang/String; = "recordingnotifications"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://records/recordingnotifications"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/Recordings$RecordingNotifications;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
