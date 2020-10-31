.class public Lmiui/maml/elements/MusicLyricParser$LyricShot;
.super Ljava/lang/Object;
.source "MusicLyricParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicLyricParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LyricShot"
.end annotation


# instance fields
.field public lineIndex:I

.field public percent:D


# direct methods
.method public constructor <init>(ID)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/maml/elements/MusicLyricParser$LyricShot;->lineIndex:I

    iput-wide p2, p0, Lmiui/maml/elements/MusicLyricParser$LyricShot;->percent:D

    return-void
.end method
