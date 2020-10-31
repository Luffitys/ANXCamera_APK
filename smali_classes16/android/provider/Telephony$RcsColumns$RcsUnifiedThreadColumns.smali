.class public interface abstract Landroid/provider/Telephony$RcsColumns$RcsUnifiedThreadColumns;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/Telephony$RcsColumns$RcsThreadColumns;
.implements Landroid/provider/Telephony$RcsColumns$Rcs1To1ThreadColumns;
.implements Landroid/provider/Telephony$RcsColumns$RcsGroupThreadColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$RcsColumns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RcsUnifiedThreadColumns"
.end annotation


# static fields
.field public static final THREAD_TYPE_1_TO_1:I = 0x0

.field public static final THREAD_TYPE_COLUMN:Ljava/lang/String; = "thread_type"

.field public static final THREAD_TYPE_GROUP:I = 0x1
