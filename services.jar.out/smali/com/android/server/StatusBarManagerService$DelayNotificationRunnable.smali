.class final Lcom/android/server/StatusBarManagerService$DelayNotificationRunnable;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DelayNotificationRunnable"
.end annotation


# instance fields
.field private mKey:Landroid/os/IBinder;

.field private mNotification:Landroid/service/notification/StatusBarNotification;

.field final synthetic this$0:Lcom/android/server/StatusBarManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StatusBarManagerService;Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p2, "key"    # Landroid/os/IBinder;
    .param p3, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 593
    iput-object p1, p0, Lcom/android/server/StatusBarManagerService$DelayNotificationRunnable;->this$0:Lcom/android/server/StatusBarManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    iput-object p2, p0, Lcom/android/server/StatusBarManagerService$DelayNotificationRunnable;->mKey:Landroid/os/IBinder;

    .line 595
    iput-object p3, p0, Lcom/android/server/StatusBarManagerService$DelayNotificationRunnable;->mNotification:Landroid/service/notification/StatusBarNotification;

    .line 596
    return-void
.end method


# virtual methods
.method public getKey()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService$DelayNotificationRunnable;->mKey:Landroid/os/IBinder;

    return-object v0
.end method

.method public getNotification()Landroid/service/notification/StatusBarNotification;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService$DelayNotificationRunnable;->mNotification:Landroid/service/notification/StatusBarNotification;

    return-object v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService$DelayNotificationRunnable;->this$0:Lcom/android/server/StatusBarManagerService;

    iget-object v1, p0, Lcom/android/server/StatusBarManagerService$DelayNotificationRunnable;->mKey:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/StatusBarManagerService$DelayNotificationRunnable;->mNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/StatusBarManagerService;->updateNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V

    .line 599
    return-void
.end method
