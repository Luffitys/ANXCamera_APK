.class public Lmiui/provider/CloudPushProvider$Watermark;
.super Ljava/lang/Object;
.source "CloudPushProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/CloudPushProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Watermark"
.end annotation


# instance fields
.field public mName:Ljava/lang/String;

.field public mType:Ljava/lang/String;

.field public mValue:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/provider/CloudPushProvider$Watermark;->mName:Ljava/lang/String;

    iput-wide p2, p0, Lmiui/provider/CloudPushProvider$Watermark;->mValue:J

    iput-object p4, p0, Lmiui/provider/CloudPushProvider$Watermark;->mType:Ljava/lang/String;

    return-void
.end method
