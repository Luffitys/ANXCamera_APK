.class public final Lcom/android/internal/content/om/OverlayConfig$Configuration;
.super Ljava/lang/Object;
.source "OverlayConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/om/OverlayConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation


# instance fields
.field public final configIndex:I

.field public final parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;


# direct methods
.method public constructor <init>(Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    iput p2, p0, Lcom/android/internal/content/om/OverlayConfig$Configuration;->configIndex:I

    return-void
.end method
