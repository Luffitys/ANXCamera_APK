.class public final Lmiui/provider/Recordings$MarkPoints$SyncDirty;
.super Ljava/lang/Object;
.source "Recordings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/Recordings$MarkPoints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncDirty"
.end annotation


# static fields
.field public static final DIRTY:I = 0x1

.field public static final SYNCED:I = 0x0

.field public static final SYNC_ERROR:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
