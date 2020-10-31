.class public interface abstract annotation Landroid/content/pm/PackageManager$RollbackDataPolicy;
.super Ljava/lang/Object;
.source "PackageManager.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "RollbackDataPolicy"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final RESTORE:I = 0x0

.field public static final RETAIN:I = 0x2

.field public static final WIPE:I = 0x1
