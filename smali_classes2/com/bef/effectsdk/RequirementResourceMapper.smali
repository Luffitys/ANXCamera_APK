.class public final Lcom/bef/effectsdk/RequirementResourceMapper;
.super Ljava/lang/Object;
.source "RequirementResourceMapper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativePeekResourcesNeededByRequirements([Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public static peekResourcesNeededByRequirements([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/bef/effectsdk/RequirementResourceMapper;->nativePeekResourcesNeededByRequirements([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
