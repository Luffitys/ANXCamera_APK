.class public final Landroid/stats/mediametrics/Mediametrics$ExtractorData;
.super Ljava/lang/Object;
.source "Mediametrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/stats/mediametrics/Mediametrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ExtractorData"
.end annotation


# static fields
.field public static final FORMAT:J = 0x10900000001L

.field public static final MIME:J = 0x10900000002L

.field public static final TRACKS:J = 0x10500000003L


# instance fields
.field final synthetic this$0:Landroid/stats/mediametrics/Mediametrics;


# direct methods
.method public constructor <init>(Landroid/stats/mediametrics/Mediametrics;)V
    .registers 2

    iput-object p1, p0, Landroid/stats/mediametrics/Mediametrics$ExtractorData;->this$0:Landroid/stats/mediametrics/Mediametrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
