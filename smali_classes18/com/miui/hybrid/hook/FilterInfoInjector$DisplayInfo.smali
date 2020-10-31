.class public Lcom/miui/hybrid/hook/FilterInfoInjector$DisplayInfo;
.super Ljava/lang/Object;
.source "FilterInfoInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/hybrid/hook/FilterInfoInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayInfo"
.end annotation


# instance fields
.field public icon:Landroid/graphics/drawable/Drawable;

.field public label:Ljava/lang/String;

.field public longClickIntent:Landroid/content/Intent;

.field public resolveInfo:Landroid/content/pm/ResolveInfo;

.field public resolvedIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/pm/ResolveInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/hybrid/hook/FilterInfoInjector$DisplayInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object p2, p0, Lcom/miui/hybrid/hook/FilterInfoInjector$DisplayInfo;->icon:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/miui/hybrid/hook/FilterInfoInjector$DisplayInfo;->label:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/hybrid/hook/FilterInfoInjector$DisplayInfo;->resolvedIntent:Landroid/content/Intent;

    iput-object p5, p0, Lcom/miui/hybrid/hook/FilterInfoInjector$DisplayInfo;->longClickIntent:Landroid/content/Intent;

    return-void
.end method
