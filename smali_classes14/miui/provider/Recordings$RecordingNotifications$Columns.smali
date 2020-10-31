.class public final Lmiui/provider/Recordings$RecordingNotifications$Columns;
.super Ljava/lang/Object;
.source "Recordings.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/Recordings$RecordingNotifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Columns"
.end annotation


# static fields
.field public static final CNT_UNREAD:Ljava/lang/String; = "cnt_unread"

.field public static final NOTIF_DESC:Ljava/lang/String; = "NOTIF_DESC"

.field public static final REC_TYPE:Ljava/lang/String; = "rec_type"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
