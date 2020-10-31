.class public final Lmiui/provider/Recordings$Downloads$Status;
.super Ljava/lang/Object;
.source "Recordings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/Recordings$Downloads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Status"
.end annotation


# static fields
.field public static final Downloading:I = 0x1

.field public static final Failed:I = 0x4

.field public static final Paused:I = 0x3

.field public static final Pendding:I = 0x2

.field public static final PenddingByNetwork:I = 0x5

.field public static final Success:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
